.class public final Lmp;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/view/View;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Z

.field public k:Landroid/content/DialogInterface$OnKeyListener;

.field public l:[Ljava/lang/CharSequence;

.field public m:Landroid/widget/ListAdapter;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Landroid/view/View;

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lmp;->q:I

    .line 654
    iput-object p1, p0, Lmp;->a:Landroid/content/Context;

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmp;->j:Z

    .line 673
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lmp;->b:Landroid/view/LayoutInflater;

    .line 674
    return-void
.end method
