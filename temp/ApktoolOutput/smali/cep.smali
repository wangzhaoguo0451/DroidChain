.class public final Lcep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/h;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/h;)V
    .locals 0

    iput-object p1, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->b(Lcom/unionpay/mpay/widgets/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->c(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcep;->a:Lcom/unionpay/mpay/widgets/h;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/h;->a(Lcom/unionpay/mpay/widgets/h;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
