.class public final Lfok;
.super Ljava/lang/Object;
.source "InternalLinkTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a(Lcom/wandoujia/p4/community/views/InternalLinkTextView;Landroid/text/Editable;)Landroid/text/Editable;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    iget-object v2, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v2}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->b(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    iget-object v2, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v2}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->b(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v3}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lfok;->a:Lcom/wandoujia/p4/community/views/InternalLinkTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    return-void
.end method
