.class final Lesn;
.super Ljava/lang/Object;
.source "AccountBindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lesk;


# direct methods
.method constructor <init>(Lesk;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lesn;->a:Lesk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lesn;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Lcoh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lesn;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->dismiss()V

    .line 268
    :cond_0
    iget-object v0, p0, Lesn;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Z)Z

    .line 269
    return-void
.end method
