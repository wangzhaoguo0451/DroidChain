.class public final Lceu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/u;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/u;)V
    .locals 0

    iput-object p1, p0, Lceu;->a:Lcom/unionpay/mpay/widgets/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lceu;->a:Lcom/unionpay/mpay/widgets/u;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/u;->a(Lcom/unionpay/mpay/widgets/u;)Lcom/unionpay/mpay/widgets/u$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceu;->a:Lcom/unionpay/mpay/widgets/u;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/u;->a(Lcom/unionpay/mpay/widgets/u;)Lcom/unionpay/mpay/widgets/u$a;

    move-result-object v0

    iget-object v1, p0, Lceu;->a:Lcom/unionpay/mpay/widgets/u;

    invoke-static {v1}, Lcom/unionpay/mpay/widgets/u;->b(Lcom/unionpay/mpay/widgets/u;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unionpay/mpay/widgets/u$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
