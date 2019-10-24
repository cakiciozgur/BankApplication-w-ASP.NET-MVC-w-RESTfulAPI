﻿using CoreLayer.DBHelper;
using DataAccessLayer.Abstraction;
using ModelLayer.Models;
using ModelLayer.DTOs;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Concretes
{
    public class MusteriRepository : RepositoryBase<Musteri>, IDisposable
    {
        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}