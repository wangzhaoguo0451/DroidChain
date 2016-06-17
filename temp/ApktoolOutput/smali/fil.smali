.class public final Lfil;
.super Leuf;
.source "CommunityUserInfoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lffw;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lfil;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lfff;

    invoke-direct {v0}, Lfff;-><init>()V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;->c(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityGroupGridCardView;

    move-result-object v0

    return-object v0
.end method
