.class public Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;
.super Landroid/widget/EditText;
.source "EditBlogView.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->b:Z

    .line 36
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->b:Z

    .line 41
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getContext()Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 102
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return p1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 108
    if-ge p1, v1, :cond_0

    .line 112
    const-class v1, Landroid/text/style/ImageSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 114
    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 115
    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter

    .prologue
    .line 124
    new-instance v0, Lbus;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 124
    invoke-direct {v0, p0, v1}, Lbus;-><init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;)V

    .line 181
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 56
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->b:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOnEnterListener$73709a8(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public setOnSelectionListener$11e5c074(Ldd;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
