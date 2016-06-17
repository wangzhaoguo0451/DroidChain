.class public final Lcea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/unionpay/mpay/views/n;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcea;->b:Lcom/unionpay/mpay/views/n;

    iput-object p2, p0, Lcea;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcea;->b:Lcom/unionpay/mpay/views/n;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->m:Ljava/lang/String;

    iget-object v2, p0, Lcea;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mpay/views/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
