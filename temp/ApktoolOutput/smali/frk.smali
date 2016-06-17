.class final Lfrk;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lfrj;


# direct methods
.method constructor <init>(Lfrj;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lfrk;->a:Lfrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lfrk;->a:Lfrj;

    iget-object v0, v0, Lfrj;->a:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 240
    return-void
.end method
