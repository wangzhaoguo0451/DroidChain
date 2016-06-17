.class public Ladr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/util/SparseArray;


# instance fields
.field b:Lcom/alipay/wandoujia/bd;

.field public c:Lcom/alipay/wandoujia/oa;

.field d:Lcom/alipay/wandoujia/oa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Ladr;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a(ILjava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    sget-object v0, Ladr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 43
    if-nez v0, :cond_0

    .line 44
    sget-object v0, Ladr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)Lcom/alipay/wandoujia/oa;
    .locals 4
    .parameter

    .prologue
    .line 163
    sget-object v0, Ladr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 164
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Ladr;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no such window type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/oa;

    .line 170
    iget-object v1, p0, Ladr;->b:Lcom/alipay/wandoujia/bd;

    invoke-interface {v0, v1}, Lcom/alipay/wandoujia/oa;->a(Lcom/alipay/wandoujia/bd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    const-string v2, "can not creat window manager"

    .line 173
    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ladp;

    invoke-direct {v0}, Ladp;-><init>()V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ladr;->a(Lacf;Ladq;)V

    .line 56
    return-void
.end method

.method public final a(Lacf;Ladq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p2}, Ladq;->b()I

    move-result v1

    .line 84
    sget-object v0, Ladr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 85
    iget-object v2, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 86
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    iput-object v0, p0, Ladr;->d:Lcom/alipay/wandoujia/oa;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    .line 89
    :cond_0
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Ladr;->a(I)Lcom/alipay/wandoujia/oa;

    move-result-object v0

    iput-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    .line 92
    :cond_1
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0, p1, p2}, Lcom/alipay/wandoujia/oa;->a(Lacf;Ladq;)V

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0, p1}, Lcom/alipay/wandoujia/oa;->a(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Ladr;->d:Lcom/alipay/wandoujia/oa;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ladr;->d:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0}, Lcom/alipay/wandoujia/oa;->i()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Ladr;->d:Lcom/alipay/wandoujia/oa;

    .line 151
    :cond_0
    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 148
    const-string v2, "no window creat on window loaded"

    .line 147
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Ladr;->c:Lcom/alipay/wandoujia/oa;

    invoke-interface {v0}, Lcom/alipay/wandoujia/oa;->i()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ladr;->b:Lcom/alipay/wandoujia/bd;

    .line 63
    return-void
.end method
