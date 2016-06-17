.class final Ladz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ladz;->a:Lafs;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Ladz;->a:Lafs;

    new-instance v1, Ladu;

    sget-object v2, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v2}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {v0, p0, v1}, Lafs;->a(Ljava/lang/Object;Ladu;)V

    .line 411
    iget-object v0, p0, Ladz;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 412
    iget-object v0, p0, Ladz;->a:Lafs;

    invoke-static {v0}, Lafs;->c(Lafs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Ladz;->a:Lafs;

    invoke-static {v0}, Lafs;->c(Lafs;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :cond_0
    iget-object v0, p0, Ladz;->a:Lafs;

    iget-object v1, p0, Ladz;->a:Lafs;

    invoke-static {v1}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lafs;->a(Lafs;Lcom/alipay/android/mini/widget/CustomEditText;)V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Ladz;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lafs;->a(Lcom/alipay/android/mini/widget/CustomEditText;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    return-void
.end method
