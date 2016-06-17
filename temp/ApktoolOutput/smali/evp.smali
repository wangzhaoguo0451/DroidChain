.class public final Levp;
.super Ljava/lang/Object;
.source "AppCommentCaptchaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Levp;->a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Levp;->a:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->finish()V

    .line 83
    return-void
.end method
