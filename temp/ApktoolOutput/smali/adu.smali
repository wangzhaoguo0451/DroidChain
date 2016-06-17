.class public Ladu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/db;


# instance fields
.field public a:Lcom/alipay/wandoujia/ra;


# direct methods
.method public constructor <init>(Lcom/alipay/wandoujia/ra;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->a()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "host"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "enctype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "request_param"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_4
    const-string v0, "validate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_5
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    iget-object v0, p0, Ladu;->a:Lcom/alipay/wandoujia/ra;

    invoke-virtual {v0}, Lcom/alipay/wandoujia/ra;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a$5c2761ba(Lcom/alipay/wandoujia/nb;)Ld;
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
