.class public Lcom/wandoujia/p4/app/detail/view/CommentBar;
.super Landroid/widget/LinearLayout;
.source "CommentBar.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->d:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lewu;

    invoke-direct {v0}, Lewu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->e:Landroid/view/View$OnTouchListener;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->d:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lewu;

    invoke-direct {v0}, Lewu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->e:Landroid/view/View$OnTouchListener;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lewt;

    invoke-direct {v0}, Lewt;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->d:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lewu;

    invoke-direct {v0}, Lewu;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->e:Landroid/view/View$OnTouchListener;

    .line 87
    return-void
.end method


# virtual methods
.method public getDislikeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInputView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLikeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 91
    const v0, 0x7f0c0410

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->a:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0c0412

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->b:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0c040f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentBar;->findViewById(I)Landroid/view/View;

    .line 94
    const v0, 0x7f0c0411

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentBar;->findViewById(I)Landroid/view/View;

    .line 95
    const v0, 0x7f0c0413

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/view/CommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->c:Landroid/widget/EditText;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wandoujia/p4/app/detail/view/CommentBar;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-void
.end method
