.class final Lels;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lelq;


# direct methods
.method constructor <init>(Lelq;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lels;->a:Lelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lels;->a:Lelq;

    invoke-static {v1}, Lelq;->b(Lelq;)Lelx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lels;->a:Lelq;

    invoke-static {v1}, Lelq;->b(Lelq;)Lelx;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lelx;->a:Lele;

    invoke-static {v1}, Lele;->c(Lele;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    :goto_0
    iget-object v1, p0, Lels;->a:Lelq;

    invoke-static {v1}, Lelq;->a(Lelq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPerformingCompletion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lelt;

    invoke-direct {v1, p0, v0}, Lelt;-><init>(Lels;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 99
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v1, v1, Lelx;->a:Lele;

    invoke-static {v1}, Lele;->c(Lele;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    return-void
.end method
