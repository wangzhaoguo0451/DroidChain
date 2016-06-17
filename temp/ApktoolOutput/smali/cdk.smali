.class public final Lcdk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/aj;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/aj;)V
    .locals 0

    iput-object p1, p0, Lcdk;->a:Lcom/unionpay/mpay/views/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcdk;->a:Lcom/unionpay/mpay/views/aj;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/aj;->g()V

    iget-object v0, p0, Lcdk;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v0, v0, Lcom/unionpay/mpay/views/aj;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcdk;->a:Lcom/unionpay/mpay/views/aj;

    iget-object v1, p0, Lcdk;->a:Lcom/unionpay/mpay/views/aj;

    invoke-static {v1}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v1

    iget-object v1, v1, Lcex;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mpay/views/aj;->a(Lcom/unionpay/mpay/views/aj;Ljava/lang/String;)V

    return-void
.end method
