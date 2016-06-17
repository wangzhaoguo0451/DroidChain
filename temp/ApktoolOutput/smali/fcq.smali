.class public final Lfcq;
.super Ljava/lang/Object;
.source "CommunityDeleteAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Lfir;

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lfir;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfcq;->a:Lfir;

    .line 39
    iput-object p2, p0, Lfcq;->b:Landroid/app/Activity;

    .line 40
    iput-object p3, p0, Lfcq;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic a(Lfcq;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfcq;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcq;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfcq;->d:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lfcq;->b:Landroid/app/Activity;

    new-instance v4, Lfcr;

    invoke-direct {v4, p0}, Lfcr;-><init>(Lfcq;)V

    new-instance v6, Lfcs;

    invoke-direct {v6, p0}, Lfcs;-><init>(Lfcq;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    move-result-object v0

    iput-object v0, p0, Lfcq;->d:Landroid/app/Dialog;

    .line 67
    return-void
.end method

.method static synthetic b(Lfcq;)Lfir;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfcq;->a:Lfir;

    return-object v0
.end method

.method static synthetic c(Lfcq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfcq;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lfcq;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lfcq;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .prologue
    const v4, 0x7f0e0162

    .line 78
    iget-object v0, p0, Lfcq;->a:Lfir;

    instance-of v0, v0, Lfiw;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lfcq;->b:Landroid/app/Activity;

    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfcq;->b:Landroid/app/Activity;

    const v2, 0x7f0e01d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfcq;->b:Landroid/app/Activity;

    const v3, 0x7f0e01cf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfcq;->b:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lfcq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lfcq;->b:Landroid/app/Activity;

    const v1, 0x7f0e0264

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfcq;->b:Landroid/app/Activity;

    const v2, 0x7f0e01cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfcq;->b:Landroid/app/Activity;

    const v3, 0x7f0e023a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfcq;->b:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lfcq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
