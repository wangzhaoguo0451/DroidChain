.class final Lfyb;
.super Ljava/lang/Object;
.source "BaseImageChooserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lfya;


# direct methods
.method constructor <init>(Lfya;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lfyb;->b:Lfya;

    iput p2, p0, Lfyb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lfyb;->b:Lfya;

    iget-object v1, p0, Lfyb;->b:Lfya;

    iget v2, p0, Lfyb;->a:I

    invoke-virtual {v1, v2}, Lfya;->getItemId(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfya;->a(Lfya;J)V

    .line 93
    return-void
.end method
