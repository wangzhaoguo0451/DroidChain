.class public final Levo;
.super Ljava/lang/Object;
.source "AppCommentCaptchaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Levo;->a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object v0, p0, Levo;->a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->finish()V

    .line 75
    return-void
.end method
