.class public final Lcgv;
.super Ljava/lang/Object;


# static fields
.field private static l:Lcgv;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcgw;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcgw;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Lcgt;

.field e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field private m:Lcgn;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgv;->b:Ljava/util/List;

    const-string v0, "secinfo"

    iput-object v0, p0, Lcgv;->e:Ljava/lang/String;

    const-string v0, "packagename"

    iput-object v0, p0, Lcgv;->f:Ljava/lang/String;

    const-string v0, "androidos"

    iput-object v0, p0, Lcgv;->g:Ljava/lang/String;

    const-string v0, "softversion"

    iput-object v0, p0, Lcgv;->h:Ljava/lang/String;

    const-string v0, "isroot"

    iput-object v0, p0, Lcgv;->i:Ljava/lang/String;

    const-string v0, "isOpen"

    iput-object v0, p0, Lcgv;->j:Ljava/lang/String;

    const-string v0, "sec_info.db"

    iput-object v0, p0, Lcgv;->k:Ljava/lang/String;

    iput-object p1, p0, Lcgv;->c:Landroid/content/Context;

    new-instance v0, Lcgt;

    iget-object v1, p0, Lcgv;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcgt;-><init>(Lcgv;Landroid/content/Context;)V

    iput-object v0, p0, Lcgv;->d:Lcgt;

    invoke-direct {p0}, Lcgv;->b()V

    invoke-virtual {p0}, Lcgv;->a()V

    new-instance v0, Lcgn;

    new-instance v1, Lcgp;

    invoke-direct {v1}, Lcgp;-><init>()V

    invoke-direct {v0, v1}, Lcgn;-><init>(Lcgp;)V

    iput-object v0, p0, Lcgv;->m:Lcgn;

    iget-object v0, p0, Lcgv;->c:Landroid/content/Context;

    invoke-static {v0}, Lcha;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcgv;->m:Lcgn;

    if-nez v0, :cond_0

    new-instance v0, Lcgn;

    new-instance v1, Lcgp;

    invoke-direct {v1}, Lcgp;-><init>()V

    invoke-direct {v0, v1}, Lcgn;-><init>(Lcgp;)V

    iput-object v0, p0, Lcgv;->m:Lcgn;

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcgv;->c:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Lcgr;

    invoke-direct {v3}, Lcgr;-><init>()V

    const-string v0, "imsi"

    iget-object v2, p0, Lcgv;->c:Landroid/content/Context;

    invoke-static {v2}, Lcha;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osversion"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {}, Lcgz;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lcd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei"

    iget-object v1, p0, Lcgv;->c:Landroid/content/Context;

    invoke-static {v1}, Lcha;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac"

    iget-object v1, p0, Lcgv;->c:Landroid/content/Context;

    invoke-static {v1}, Lcha;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "net"

    iget-object v1, p0, Lcgv;->c:Landroid/content/Context;

    invoke-static {v1}, Lcha;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {}, Lcha;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    iget-object v1, p0, Lcgv;->c:Landroid/content/Context;

    const-string v2, "secinfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sec_version"

    const-string v4, "1"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcgv;->m:Lcgn;

    const-string v2, "http://uniview.wostore.cn/log-safepackage/update?"

    const-string v4, "GET"

    new-instance v5, Lcgu;

    invoke-direct {v5, p0}, Lcgu;-><init>(Lcgv;)V

    new-instance v0, Lcgq;

    invoke-direct/range {v0 .. v5}, Lcgq;-><init>(Lcgn;Ljava/lang/String;Lcgr;Ljava/lang/String;Lcgo;)V

    invoke-virtual {v0}, Lcgq;->start()V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcgv;
    .locals 1

    sget-object v0, Lcgv;->l:Lcgv;

    if-nez v0, :cond_0

    new-instance v0, Lcgv;

    invoke-direct {v0, p0}, Lcgv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcgv;->l:Lcgv;

    :cond_0
    sget-object v0, Lcgv;->l:Lcgv;

    return-object v0
.end method

.method private b()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcgv;->d:Lcgt;

    invoke-virtual {v0}, Lcgt;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcgv;->e:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    iget-object v1, p0, Lcgv;->f:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcgv;->g:Ljava/lang/String;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcgv;->h:Ljava/lang/String;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcgv;->i:Ljava/lang/String;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcgv;->j:Ljava/lang/String;

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    const-string v1, "com.lbe.security"

    const-string v2, "any"

    const-string v3, "any"

    const-string v4, "true"

    const-string v5, "true"

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    const-string v1, "com.lbe.security.miui"

    const-string v2, "15"

    const-string v3, "any"

    const-string v4, "true"

    const-string v5, "true"

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    const-string v1, "com.lenovo.safecenter"

    const-string v2, "any"

    const-string v3, "any"

    const-string v4, "any"

    const-string v5, "true"

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    const-string v1, "com.tencent.qqpimsecure"

    const-string v2, "any"

    const-string v3, "3.8.6"

    const-string v4, "true"

    const-string v5, "false"

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcgv;->a:Ljava/util/List;

    new-instance v0, Lcgw;

    const-string v1, "com.qihoo360.mobilesafe"

    const-string v2, "any"

    const-string v3, "any"

    const-string v4, "true"

    const-string v5, "false"

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    iget-object v0, p0, Lcgv;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v0, p0, Lcgv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcgv;->b:Ljava/util/List;

    new-instance v0, Lcgw;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcgx;->a()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcgv;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcgw;

    iget-object v5, v5, Lcgw;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcgw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcgv;->d:Lcgt;

    invoke-virtual {v0}, Lcgt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcgv;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgv;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgv;->h:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgv;->i:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcgv;->j:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcgv;->e:Ljava/lang/String;

    iget-object v4, p0, Lcgv;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method
