.class public Lcom/wandoujia/ripple_framework/view/Anchor;
.super Ljava/lang/Object;
.source "Anchor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/ripple_framework/view/Anchor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lhlw;

    invoke-direct {v0}, Lhlw;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/view/Anchor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->l:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->m:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->i:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->h:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->j:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->k:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->d:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->e:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->f:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->g:I

    .line 148
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/view/Anchor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/ripple_framework/view/Anchor;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/ripple_framework/view/Anchor;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 44
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-static {p1}, Lj;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    move-object p1, v0

    .line 52
    :cond_0
    invoke-static {p1, v1}, Lcom/wandoujia/ripple_framework/view/Anchor;->a(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 53
    aget v2, v0, v3

    iput v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->l:I

    iput v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->i:I

    .line 54
    aget v0, v0, v4

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->h:I

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->m:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->j:I

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->k:I

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    .line 59
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    if-gez v0, :cond_1

    .line 60
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    .line 61
    iput v3, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    .line 63
    :cond_1
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    if-le v0, v2, :cond_2

    .line 64
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    .line 66
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 69
    invoke-static {p2, v1}, Lcom/wandoujia/ripple_framework/view/Anchor;->a(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    aget v1, v1, v4

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->d:I

    .line 70
    aget v0, v0, v3

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->e:I

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->f:I

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->g:I

    .line 75
    :cond_3
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 85
    aput v4, v1, v5

    aput v4, v1, v4

    .line 86
    if-ne p0, p1, :cond_1

    move-object v0, v1

    .line 98
    :goto_0
    return-object v0

    :cond_0
    move-object p0, v0

    .line 90
    :cond_1
    aget v0, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v4

    .line 91
    aget v0, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v5

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    if-eqz v0, :cond_2

    .line 94
    aget v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v4

    .line 95
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 97
    :cond_2
    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    :cond_3
    move-object v0, v1

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/Anchor;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
