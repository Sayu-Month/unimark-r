use sqlx::mysql::MySqlPool;
use std::env;

pub async fn user_fetch(email: &String, password: &String) -> anyhow::Result<()> {
    let pool = MySqlPool::connect(&env::var("DATABASE_URL")?).await?;
    println!("user fetch");

    let recs = sqlx::query!(
        r#"
  SELECT id, email, password
  FROM users
  WHERE email = ? AND password = ?
        "#,
        email,
        password
    )
    .fetch_all(&pool)
    .await?;

    for rec in recs {
        println!(
            "id: {}, email: {}, password: {}",
            rec.id, rec.email, rec.password,
        );
    }

    Ok(())
}
