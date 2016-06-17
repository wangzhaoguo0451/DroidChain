.class final Lcfc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcfa;


# direct methods
.method constructor <init>(Lcfa;)V
    .locals 0

    iput-object p1, p0, Lcfc;->a:Lcfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcfc;->a:Lcfa;

    iget-object v0, v0, Lcfa;->a:Lcom/unionpay/mpay_2/upview/listview/a;

    invoke-static {v0, p1}, Lcom/unionpay/mpay_2/upview/listview/a;->b(Lcom/unionpay/mpay_2/upview/listview/a;Landroid/view/View;)V

    return-void
.end method
