.class final Lfuc;
.super Ljava/lang/Object;
.source "PickUpGiftAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfua;


# direct methods
.method constructor <init>(Lfua;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lfuc;->a:Lfua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "giftBean"

    invoke-direct {v0, v1}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 98
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 99
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 100
    const/16 v1, 0x64

    iput v1, v0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 101
    iget-object v1, p0, Lfuc;->a:Lfua;

    invoke-static {v1}, Lfua;->a(Lfua;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Letz;->a()Letz;

    move-result-object v2

    iget-object v2, v2, Letz;->a:Lcmm;

    const-class v3, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;

    invoke-static {v1, v2, v0, v3}, Ld;->a(Landroid/content/Context;Lcmm;Lcom/wandoujia/account/AccountParams;Ljava/lang/Class;)V

    .line 103
    return-void
.end method
