.class public final Lesk;
.super Ljava/lang/Object;
.source "AccountBindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 226
    iget-object v6, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v0, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    iget-object v1, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->b(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->d(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v3}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->f(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lesl;

    invoke-direct {v4, p0}, Lesl;-><init>(Lesk;)V

    new-instance v5, Lesn;

    invoke-direct {v5, p0}, Lesn;-><init>(Lesk;)V

    invoke-static/range {v0 .. v5}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Lcoh;)Lcoh;

    .line 271
    iget-object v0, p0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->g(Lcom/wandoujia/p4/account/activity/AccountBindActivity;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 272
    return-void
.end method
