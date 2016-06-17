.class public final Lfel;
.super Ljava/lang/Object;
.source "CommunityQuitGroupAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfel;->a:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lfel;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lfel;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic a(Lfel;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    new-instance v0, Lfeo;

    invoke-direct {v0, p0}, Lfeo;-><init>(Lfel;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lfel;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lfel;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 7

    .prologue
    const v6, 0x7f0e020d

    .line 41
    const-string v0, "GROUP_ADMIN"

    iget-object v1, p0, Lfel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0222

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lfel;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfel;->a:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfel;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfel;->a:Landroid/app/Activity;

    const v4, 0x7f0e020e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfem;

    invoke-direct {v4}, Lfem;-><init>()V

    iget-object v5, p0, Lfel;->a:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfen;

    invoke-direct {v6, p0}, Lfen;-><init>(Lfel;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    goto :goto_0
.end method
