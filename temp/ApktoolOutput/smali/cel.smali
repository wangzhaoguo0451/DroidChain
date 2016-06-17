.class public final Lcel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/widgets/c;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/widgets/c;)V
    .locals 0

    iput-object p1, p0, Lcel;->a:Lcom/unionpay/mpay/widgets/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcel;->a:Lcom/unionpay/mpay/widgets/c;

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/c;->a(Lcom/unionpay/mpay/widgets/c;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mpay/widgets/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcel;->a:Lcom/unionpay/mpay/widgets/c;

    invoke-static {v0, p3}, Lcom/unionpay/mpay/widgets/c;->a(Lcom/unionpay/mpay/widgets/c;I)I

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
