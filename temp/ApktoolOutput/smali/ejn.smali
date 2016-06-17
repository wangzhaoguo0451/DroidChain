.class final Lejn;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lejm;


# direct methods
.method constructor <init>(Lejm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lejn;->b:Lejm;

    iput p2, p0, Lejn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lejn;->b:Lejm;

    iget v1, p0, Lejn;->a:I

    invoke-static {v0, v1}, Lejm;->a(Lejm;I)I

    .line 116
    iget-object v0, p0, Lejn;->b:Lejm;

    invoke-virtual {v0}, Lejm;->notifyDataSetChanged()V

    .line 117
    return-void
.end method
