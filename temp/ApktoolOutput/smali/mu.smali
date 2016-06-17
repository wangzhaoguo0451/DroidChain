.class public final Lmu;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field public final a:Lmp;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmt;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmu;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lmp;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lmt;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmu;->a:Lmp;

    .line 282
    iput p2, p0, Lmu;->b:I

    .line 283
    return-void
.end method


# virtual methods
.method public final a()Lmt;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 882
    new-instance v3, Lmt;

    iget-object v0, p0, Lmu;->a:Lmp;

    iget-object v0, v0, Lmp;->a:Landroid/content/Context;

    iget v1, p0, Lmu;->b:I

    invoke-direct {v3, v0, v1}, Lmt;-><init>(Landroid/content/Context;I)V

    .line 883
    iget-object v4, p0, Lmu;->a:Lmp;

    invoke-static {v3}, Lmt;->a(Lmt;)Lmn;

    move-result-object v5

    iget-object v0, v4, Lmp;->e:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lmp;->e:Landroid/view/View;

    iput-object v0, v5, Lmn;->u:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, v4, Lmp;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget-object v1, v4, Lmp;->f:Ljava/lang/CharSequence;

    iget-object v2, v4, Lmp;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v0, v1, v2, v8}, Lmn;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_1
    iget-object v0, v4, Lmp;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iget-object v1, v4, Lmp;->h:Ljava/lang/CharSequence;

    iget-object v2, v4, Lmp;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v0, v1, v2, v8}, Lmn;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2
    iget-object v0, v4, Lmp;->l:[Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, v4, Lmp;->m:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, v4, Lmp;->b:Landroid/view/LayoutInflater;

    iget v1, v5, Lmn;->y:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, v4, Lmp;->p:Z

    if-eqz v1, :cond_d

    iget v1, v5, Lmn;->z:I

    :goto_1
    iget-object v2, v4, Lmp;->m:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_e

    iget-object v1, v4, Lmp;->m:Landroid/widget/ListAdapter;

    :goto_2
    iput-object v1, v5, Lmn;->v:Landroid/widget/ListAdapter;

    iget v1, v4, Lmp;->q:I

    iput v1, v5, Lmn;->w:I

    iget-object v1, v4, Lmp;->n:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_4

    new-instance v1, Lmq;

    invoke-direct {v1, v4, v5}, Lmq;-><init>(Lmp;Lmn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    iget-boolean v1, v4, Lmp;->p:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_5
    iput-object v0, v5, Lmn;->e:Landroid/widget/ListView;

    :cond_6
    iget-object v0, v4, Lmp;->o:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lmp;->o:Landroid/view/View;

    iput-object v0, v5, Lmn;->f:Landroid/view/View;

    .line 884
    :cond_7
    iget-object v0, p0, Lmu;->a:Lmp;

    iget-boolean v0, v0, Lmp;->j:Z

    invoke-virtual {v3, v0}, Lmt;->setCancelable(Z)V

    .line 885
    iget-object v0, p0, Lmu;->a:Lmp;

    iget-boolean v0, v0, Lmp;->j:Z

    if-eqz v0, :cond_8

    .line 886
    invoke-virtual {v3, v9}, Lmt;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_8
    invoke-virtual {v3, v8}, Lmt;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    invoke-virtual {v3, v8}, Lmt;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    iget-object v0, p0, Lmu;->a:Lmp;

    iget-object v0, v0, Lmp;->k:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_9

    .line 891
    iget-object v0, p0, Lmu;->a:Lmp;

    iget-object v0, v0, Lmp;->k:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v0}, Lmt;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_9
    return-object v3

    .line 883
    :cond_a
    iget-object v0, v4, Lmp;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lmp;->d:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Lmn;->a(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v0, v4, Lmp;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lmp;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, v5, Lmn;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, v5, Lmn;->r:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_c

    iget-object v1, v5, Lmn;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, v5, Lmn;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    iget v1, v5, Lmn;->A:I

    goto :goto_1

    :cond_e
    new-instance v2, Lms;

    iget-object v6, v4, Lmp;->a:Landroid/content/Context;

    iget-object v7, v4, Lmp;->l:[Ljava/lang/CharSequence;

    invoke-direct {v2, v6, v1, v7}, Lms;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    move-object v1, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/CharSequence;)Lmu;
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lmu;->a:Lmp;

    iput-object p1, v0, Lmp;->d:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method
