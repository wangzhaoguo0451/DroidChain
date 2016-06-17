.class final Lcvg;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcvf;


# direct methods
.method constructor <init>(Lcvf;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcvg;->b:Lcvf;

    iput p2, p0, Lcvg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcvg;->b:Lcvf;

    iget v1, p0, Lcvg;->a:I

    invoke-static {v0, v1}, Lcvf;->a(Lcvf;I)I

    .line 121
    iget-object v0, p0, Lcvg;->b:Lcvf;

    invoke-virtual {v0}, Lcvf;->notifyDataSetChanged()V

    .line 122
    return-void
.end method
