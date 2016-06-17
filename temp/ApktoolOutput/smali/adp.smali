.class public final Ladp;
.super Ladq;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lacz;

    sget-object v1, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    invoke-direct {v0, v2, v2, v1}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lcom/alipay/wandoujia/md;)V

    new-instance v1, Lada;

    invoke-direct {v1}, Lada;-><init>()V

    invoke-direct {p0, v0, v1}, Ladq;-><init>(Lacz;Lada;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
