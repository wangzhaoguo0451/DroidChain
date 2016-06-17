.class public final Lfbu;
.super Ljava/lang/Object;
.source "WeixinAPI.java"


# static fields
.field private static c:Lfbu;


# instance fields
.field private a:Lcbo;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lfbu;->b:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lfbu;->b:Landroid/content/Context;

    const-string v1, "wxed6dfca0ae67f7a3"

    invoke-static {v0, v1}, Lcbv;->a(Landroid/content/Context;Ljava/lang/String;)Lcbo;

    move-result-object v0

    iput-object v0, p0, Lfbu;->a:Lcbo;

    iget-object v0, p0, Lfbu;->a:Lcbo;

    const-string v1, "wxed6dfca0ae67f7a3"

    invoke-virtual {v0, v1}, Lcbo;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "weixin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeixinAPI register result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcbw;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iput-object p0, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 136
    :cond_1
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {v0, p2}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 139
    :cond_2
    iput-object p3, v0, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcbw;

    .line 140
    return-object v0
.end method

.method public static a()Lfbu;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lfbu;->c:Lfbu;

    if-nez v1, :cond_0

    new-instance v1, Lfbu;

    invoke-direct {v1, v0}, Lfbu;-><init>(Landroid/content/Context;)V

    sput-object v1, Lfbu;->c:Lfbu;

    :cond_0
    sget-object v0, Lfbu;->c:Lfbu;

    return-object v0
.end method

.method public static b()Lcbo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lfbu;->c:Lfbu;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lfbu;->c:Lfbu;

    iget-object v0, v0, Lfbu;->a:Lcbo;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
