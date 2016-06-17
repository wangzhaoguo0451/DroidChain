.class public final Ldko;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Lagt;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Ldko;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;-><init>()V

    .line 68
    iget-object v1, p0, Ldko;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 70
    return-void
.end method
