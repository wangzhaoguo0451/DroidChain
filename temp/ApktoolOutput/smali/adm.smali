.class public Ladm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ladm;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladm;->b:Ljava/util/Map;

    .line 27
    return-void
.end method

.method protected static a(Lcom/alipay/wandoujia/md;Ladl;)Ladl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Ladm;

    .line 54
    const-string v2, "frame data is null"

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {}, Ladm;->a()Ladm;

    move-result-object v2

    .line 57
    iget-object v0, v2, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/mc;

    .line 58
    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Ladm;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no such frame factory type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    iget-object v2, v2, Ladm;->b:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-interface {v0, p1}, Lcom/alipay/wandoujia/mc;->c(Ladl;)Ladq;

    move-result-object v1

    .line 66
    :cond_2
    if-nez v1, :cond_3

    .line 69
    :goto_0
    invoke-interface {v0, p1}, Lcom/alipay/wandoujia/mc;->b(Ladl;)V

    .line 71
    iget-object v0, p1, Ladl;->b:Lada;

    iput-object p0, v0, Lada;->i:Lcom/alipay/wandoujia/md;

    .line 73
    return-object p1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method private static a()Ladm;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ladm;->a:Ladm;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ladm;

    invoke-direct {v0}, Ladm;-><init>()V

    sput-object v0, Ladm;->a:Ladm;

    .line 33
    :cond_0
    sget-object v0, Ladm;->a:Ladm;

    return-object v0
.end method

.method public static a(Lcom/alipay/wandoujia/mc;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-static {}, Ladm;->a()Ladm;

    move-result-object v0

    .line 43
    invoke-interface {p0}, Lcom/alipay/wandoujia/mc;->a()Lcom/alipay/wandoujia/md;

    move-result-object v1

    .line 44
    iget-object v2, v0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    iget-object v0, v0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method
