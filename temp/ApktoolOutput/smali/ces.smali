.class public final Lces;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/n;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/n;)V
    .locals 0

    iput-object p1, p0, Lces;->a:Lcom/unionpay/mpay/widgets/n;

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
    .locals 3

    iget-object v0, p0, Lces;->a:Lcom/unionpay/mpay/widgets/n;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/n;->a(Lcom/unionpay/mpay/widgets/n;)Lcom/unionpay/mpay/widgets/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lces;->a:Lcom/unionpay/mpay/widgets/n;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/n;->a(Lcom/unionpay/mpay/widgets/n;)Lcom/unionpay/mpay/widgets/n$a;

    move-result-object v0

    iget-object v1, p0, Lces;->a:Lcom/unionpay/mpay/widgets/n;

    iget-object v1, v1, Lcom/unionpay/mpay/widgets/n;->m:Lcom/unionpay/mpay/widgets/h;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mpay/widgets/n$a;->a(Lcom/unionpay/mpay/widgets/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
