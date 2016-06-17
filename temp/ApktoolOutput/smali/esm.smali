.class final Lesm;
.super Ljava/lang/Object;
.source "AccountBindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lesl;


# direct methods
.method constructor <init>(Lesl;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lesm;->a:Lesl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lesm;->a:Lesl;

    iget-object v0, v0, Lesl;->a:Lesk;

    iget-object v0, v0, Lesk;->a:Lcom/wandoujia/p4/account/activity/AccountBindActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountBindActivity;->a(Lcom/wandoujia/p4/account/activity/AccountBindActivity;Z)Z

    .line 249
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 250
    return-void
.end method
