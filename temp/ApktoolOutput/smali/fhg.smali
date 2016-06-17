.class public final Lfhg;
.super Leuf;
.source "CommunityNotificationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leuf",
        "<",
        "Lfga;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Leuf;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lfhg;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/wandoujia/mvc/BaseController;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lffh;

    invoke-direct {v0}, Lffh;-><init>()V

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p1}, Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;->b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/card/view/CommunityNotificationCardView;

    move-result-object v0

    return-object v0
.end method
