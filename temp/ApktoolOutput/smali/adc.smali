.class public final Ladc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/wandoujia/mc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/wandoujia/md;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    return-object v0
.end method

.method public final b(Ladl;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p1, Ladl;->d:Lorg/json/JSONObject;

    .line 38
    const-string v1, "dismiss_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ladl;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public final synthetic c(Ladl;)Ladq;
    .locals 1
    .parameter

    .prologue
    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
