import Head from 'next/head';
import { ReactNode } from 'react';

const Layout = ({ children, title }: Props) => {
  return (
    <div className='flex justfy-center items-center flex-col min-h-screen text-black font-serif bg-gray-50'>
      <Head>
        <title>{title}</title>
      </Head>
      <main className='flex flex-1 justify-center items-center w-screen flex-col'>{children}</main>
      <footer className='w-full h-6 flex justify-center items-center text-gray-500 text-sm'>
        @Unimark 2022 Sayu
      </footer>
    </div>
  );
};

type Props = {
  children?: ReactNode;
  title?: String;
};

export default Layout;
