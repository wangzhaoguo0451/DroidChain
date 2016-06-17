.class public final Lcdf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/ab;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/ab;)V
    .locals 0

    iput-object p1, p0, Lcdf;->a:Lcom/unionpay/mpay/views/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcdf;->a:Lcom/unionpay/mpay/views/ab;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/ab;->g()V

    iget-object v0, p0, Lcdf;->a:Lcom/unionpay/mpay/views/ab;

    iget-object v0, v0, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v0, v0, Lcfz;->x:Lcga;

    const-string v1, "cancel"

    iput-object v1, v0, Lcga;->e:Ljava/lang/String;

    iget-object v0, p0, Lcdf;->a:Lcom/unionpay/mpay/views/ab;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/ab;->h()V

    return-void
.end method
