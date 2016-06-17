.class public final Ldci;
.super Landroid/os/Handler;
.source "NoDexLaunchActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Ldci;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ldci;-><init>(Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Ldci;->a:Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/activity/NoDexLaunchActivity;->finish()V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 68
    return-void
.end method
