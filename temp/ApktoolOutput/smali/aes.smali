.class final Laes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Laep;


# direct methods
.method constructor <init>(Laep;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laes;->a:Laep;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Laes;->a:Laep;

    invoke-static {v0}, Laep;->a(Laep;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Laes;->a:Laep;

    invoke-static {v1, v0}, Laep;->a(Laep;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Laes;->a:Laep;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Laep;->a(Laep;I)V

    .line 206
    iget-object v0, p0, Laes;->a:Laep;

    invoke-static {v0}, Laep;->b(Laep;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Laes;->a:Laep;

    invoke-static {v0}, Laep;->c(Laep;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Laes;->a:Laep;

    iget-object v1, p0, Laes;->a:Laep;

    new-instance v2, Ladu;

    .line 209
    iget-object v3, p0, Laes;->a:Laep;

    iget-object v3, v3, Laez;->l:Lafc;

    invoke-static {v3}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v3

    invoke-direct {v2, v3}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 208
    invoke-virtual {v0, v1, v2}, Laep;->a(Ljava/lang/Object;Ladu;)V

    .line 212
    :cond_0
    iget-object v0, p0, Laes;->a:Laep;

    new-instance v1, Ladu;

    sget-object v2, Lcom/alipay/wandoujia/ra;->s:Lcom/alipay/wandoujia/ra;

    invoke-direct {v1, v2}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {v0, p0, v1}, Laep;->a(Ljava/lang/Object;Ladu;)V

    .line 213
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    return-void
.end method
