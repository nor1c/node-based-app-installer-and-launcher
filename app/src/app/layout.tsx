'use client'

import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" onContextMenu={(e) => e.preventDefault()}>
      <body className={inter.className}>{children}</body>
    </html>
  );
}