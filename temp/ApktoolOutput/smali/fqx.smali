.class public final Lfqx;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lfqx;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lfqx;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lfqx;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 259
    :cond_0
    return-void
.end method
