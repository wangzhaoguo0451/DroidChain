.class public final Lfsg;
.super Lfsi;
.source "AccurateCacheProxyFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lfsi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lfsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsi",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lfsx;


# direct methods
.method public constructor <init>(Lfsi;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsi",
            "<TT;>;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lfsi;-><init>()V

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    instance-of v2, v0, Lfsx;

    if-eqz v2, :cond_0

    .line 27
    check-cast v0, Lfsx;

    .line 32
    :goto_0
    iput-object p1, p0, Lfsg;->a:Lfsi;

    .line 33
    iput-object v0, p0, Lfsg;->b:Lfsx;

    .line 34
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lfsx;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lfsx;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lfsg;->a:Lfsi;

    invoke-virtual {v0}, Lfsi;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfsg;->a:Lfsi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lfsh;

    iget-object v1, p0, Lfsg;->b:Lfsx;

    invoke-direct {v0, v1, p1}, Lfsh;-><init>(Lfsx;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final a(II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lfsg;->a:Lfsi;

    invoke-virtual {v0, p1, p2}, Lfsi;->a(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final b(II)Lfss;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfss",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lfsg;->a:Lfsi;

    invoke-virtual {v0, p1, p2}, Lfsi;->b(II)Lfss;

    move-result-object v0

    return-object v0
.end method
