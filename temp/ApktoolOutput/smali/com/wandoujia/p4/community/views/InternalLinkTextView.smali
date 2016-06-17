.class public Lcom/wandoujia/p4/community/views/InternalLinkTextView;
.super Landroid/widget/TextView;
.source "InternalLinkTextView.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private final c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lfok;

    invoke-direct {v0, p0}, Lfok;-><init>(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c:Landroid/text/TextWatcher;

    .line 65
    invoke-direct {p0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lfok;

    invoke-direct {v0, p0}, Lfok;-><init>(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c:Landroid/text/TextWatcher;

    .line 70
    invoke-direct {p0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lfok;

    invoke-direct {v0, p0}, Lfok;-><init>(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c:Landroid/text/TextWatcher;

    .line 75
    invoke-direct {p0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a()V

    .line 76
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/InternalLinkTextView;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v3

    :cond_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a:[Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->b:[Ljava/lang/String;

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https://"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    :goto_1
    iget-object v6, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a:[Ljava/lang/String;

    aput-object v4, v6, v1

    iget-object v6, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->b:[Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v4

    :cond_3
    aput-object v2, v6, v1

    invoke-interface {p1, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ltz v2, :cond_4

    if-gt v2, v5, :cond_4

    new-instance v6, Lfol;

    invoke-direct {v6, v4}, Lfol;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-interface {p1, v6, v2, v5, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "name"

    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->c:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "download"

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/views/InternalLinkTextView;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/InternalLinkTextView;->b:[Ljava/lang/String;

    return-object v0
.end method
