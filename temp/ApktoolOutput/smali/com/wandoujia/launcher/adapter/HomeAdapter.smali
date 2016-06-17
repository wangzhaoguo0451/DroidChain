.class public final Lcom/wandoujia/launcher/adapter/HomeAdapter;
.super Lab;
.source "HomeAdapter.java"


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lab;-><init>(Ls;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->values()[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    move-result-object v0

    .line 35
    sget-object v1, Ldxw;->a:[I

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v0, "search_type"

    sget-object v2, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;

    invoke-direct {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 45
    :pswitch_1
    new-instance v0, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-direct {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-direct {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;-><init>()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->values()[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->values()[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method
