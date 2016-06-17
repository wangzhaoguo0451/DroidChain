.class public final Ldch;
.super Ljava/lang/Object;
.source "NoDexLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Ldch;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Ldch;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Ldch;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->getApplication()Landroid/app/Application;

    iget-object v0, p0, Ldch;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/JupiterApplication;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method
