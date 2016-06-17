.class public final Lfez;
.super Landroid/widget/BaseAdapter;
.source "ExpandableCircleAvatarAdapter.java"


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/community/http/model/CommunityUserModel;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lffb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfez;->d:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfez;->e:Ljava/util/List;

    .line 45
    iput p1, p0, Lfez;->a:I

    .line 46
    iget-object v0, p2, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->items:Ljava/util/List;

    iput-object v0, p0, Lfez;->b:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lfez;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    .line 48
    invoke-virtual {p0}, Lfez;->a()V

    .line 49
    return-void
.end method

.method private a(I)Lffb;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lfez;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffb;

    return-object v0
.end method

.method static synthetic a(Lfez;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-boolean v0, p0, Lfez;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfez;->a:I

    if-lt v0, v1, :cond_1

    iput-boolean v2, p0, Lfez;->d:Z

    iget-object v0, p0, Lfez;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lfez;->e:Ljava/util/List;

    new-instance v4, Lffb;

    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-direct {v4, v2, v0, v2}, Lffb;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfez;->notifyDataSetChanged()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lfez;->a()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    iput-boolean v2, p0, Lfez;->d:Z

    .line 92
    iget-object v0, p0, Lfez;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfez;->a:I

    if-le v0, v1, :cond_1

    move v1, v2

    :goto_0
    move v4, v3

    .line 94
    :goto_1
    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 95
    iget v0, p0, Lfez;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_3

    .line 96
    iget-object v5, p0, Lfez;->e:Ljava/util/List;

    new-instance v6, Lffb;

    if-eqz v1, :cond_2

    :goto_2
    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-direct {v6, v2, v0, v3}, Lffb;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Lfez;->notifyDataSetChanged()V

    .line 103
    return-void

    :cond_1
    move v1, v3

    .line 93
    goto :goto_0

    :cond_2
    move v2, v3

    .line 96
    goto :goto_2

    .line 100
    :cond_3
    iget-object v5, p0, Lfez;->e:Ljava/util/List;

    new-instance v6, Lffb;

    iget-object v0, p0, Lfez;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-direct {v6, v3, v0, v3}, Lffb;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityUserModel;B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lfez;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lfez;->a(I)Lffb;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 133
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lfez;->a(I)Lffb;

    move-result-object v0

    .line 118
    iget v0, v0, Lffb;->a:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lfez;->getItemViewType(I)I

    move-result v3

    .line 140
    if-nez p2, :cond_0

    .line 141
    const v0, 0x7f0300b7

    invoke-static {p3, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 142
    const v0, 0x7f0c027f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadCircleImageView;

    .line 144
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityAttachedReloadCircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 145
    const v1, 0x7f0c0280

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    new-instance v2, Lffc;

    invoke-direct {v2, v4}, Lffc;-><init>(B)V

    .line 147
    iput-object v1, v2, Lffc;->b:Landroid/widget/TextView;

    .line 148
    iput-object v0, v2, Lffc;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    .line 149
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 153
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 164
    :goto_1
    new-instance v0, Lffa;

    invoke-direct {v0, p0}, Lffa;-><init>(Lfez;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-object p2

    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffc;

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v1, v0, Lffc;->a:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    invoke-direct {p0, p1}, Lfez;->a(I)Lffb;

    move-result-object v2

    iget-object v2, v2, Lffb;->b:Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0201e7

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->a(Ljava/lang/String;I)V

    .line 157
    iget-object v0, v0, Lffc;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v1, v0, Lffc;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfez;->c:Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    iget v3, v3, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->totalCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, v0, Lffc;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 3

    .prologue
    .line 108
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 109
    iget-object v0, p0, Lfez;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffb;

    .line 110
    iget v0, v0, Lffb;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
