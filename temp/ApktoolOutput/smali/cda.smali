.class public final Lcda;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/ab;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/ab;)V
    .locals 0

    iput-object p1, p0, Lcda;->a:Lcom/unionpay/mpay/views/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcda;->a:Lcom/unionpay/mpay/views/ab;

    invoke-static {v0}, Lcom/unionpay/mpay/views/ab;->a(Lcom/unionpay/mpay/views/ab;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcda;->a:Lcom/unionpay/mpay/views/ab;

    invoke-static {v0}, Lcom/unionpay/mpay/views/ab;->a(Lcom/unionpay/mpay/views/ab;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    :cond_0
    iget-object v0, p0, Lcda;->a:Lcom/unionpay/mpay/views/ab;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->g:Ljava/lang/String;

    iget-object v2, p0, Lcda;->a:Lcom/unionpay/mpay/views/ab;

    iget-object v2, v2, Lcom/unionpay/mpay/views/ab;->a:Lcfz;

    iget-object v2, v2, Lcfz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
