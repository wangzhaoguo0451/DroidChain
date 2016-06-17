.class public final Lceh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/z;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/z;)V
    .locals 0

    iput-object p1, p0, Lceh;->a:Lcom/unionpay/mpay/widgets/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lceh;->a:Lcom/unionpay/mpay/widgets/z;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/z;->a(Lcom/unionpay/mpay/widgets/z;)Lcom/unionpay/mpay/widgets/z$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceh;->a:Lcom/unionpay/mpay/widgets/z;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/z;->a(Lcom/unionpay/mpay/widgets/z;)Lcom/unionpay/mpay/widgets/z$a;

    move-result-object v0

    iget-object v1, p0, Lceh;->a:Lcom/unionpay/mpay/widgets/z;

    invoke-interface {v0, v1}, Lcom/unionpay/mpay/widgets/z$a;->a(Lcom/unionpay/mpay/widgets/m;)V

    :cond_0
    return-void
.end method
