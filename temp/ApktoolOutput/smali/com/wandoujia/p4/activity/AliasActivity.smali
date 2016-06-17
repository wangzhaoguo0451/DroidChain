.class public Lcom/wandoujia/p4/activity/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/wandoujia/p4/activity/AliasActivity;->finish()V

    .line 24
    return-void
.end method
