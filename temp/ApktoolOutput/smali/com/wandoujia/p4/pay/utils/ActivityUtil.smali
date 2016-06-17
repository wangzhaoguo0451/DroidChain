.class public Lcom/wandoujia/p4/pay/utils/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# static fields
.field static final KEY_SDK_START_ID:Ljava/lang/String; = "startId"

.field private static final SDK_INTENT_ACTION:Ljava/lang/String; = "com.wandoujia.oakenshield"

.field static final SDK_SCHEME_PREFIX:Ljava/lang/String; = "Wandoujia-PaySdk-"

.field static final SDK_SCHEME_UNIFY:Ljava/lang/String; = "Wandoujia-PaySdk-Unify"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/pay/utils/ActivityUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/utils/ActivityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController(Landroid/support/v4/app/FragmentActivity;)Lcom/wandoujia/p4/pay/activity/ActivityControllerInterface;
    .locals 1
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSessionId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "startId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :cond_0
    return-object v0
.end method

.method public static getVolleyMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 60
    :cond_0
    return-object v0
.end method

.method public static showErrorMessage(Landroid/content/Context;Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p1}, Lcom/wandoujia/p4/pay/utils/ActivityUtil;->getVolleyMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002 \u9519\u8bef\u4fe1\u606f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 66
    return-void
.end method
