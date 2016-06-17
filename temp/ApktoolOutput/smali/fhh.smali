.class public Lfhh;
.super Ljava/lang/Object;
.source "CommunityNotificationListFragment.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;",
        "Lfga;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lfhh;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    new-instance v0, Lfga;

    invoke-direct {v0, p1}, Lfga;-><init>(Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lfhh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
