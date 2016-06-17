.class final Lfug;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfue;


# direct methods
.method constructor <init>(Lfue;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lfug;->a:Lfue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfug;->a:Lfue;

    iget-object v1, v1, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    iget-object v1, p0, Lfug;->a:Lfue;

    iget-object v1, v1, Lfue;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method
