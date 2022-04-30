import type { NextPage } from 'next';
import Auth from '../components/Auth';
import Layout from '../components/layout';

const Home: NextPage = () => {
  return (
    <Layout title='Login'>
      <Auth />
    </Layout>
  );
};

export default Home;
