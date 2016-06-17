.class public final Lfqv;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lfqv;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    iget-object v0, p0, Lfqv;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lfqv;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method
