.class public Lcom/wandoujia/account/AccountParams;
.super Ljava/lang/Object;
.source "AccountParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/account/AccountParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Landroid/app/PendingIntent;

.field public p:Lcom/wandoujia/account/AccountErrorResponse;

.field public q:I

.field public r:Lcom/wandoujia/account/AccountParams$Page;

.field public s:Lcom/wandoujia/account/AccountParams$Type;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcid;

    invoke-direct {v0}, Lcid;-><init>()V

    sput-object v0, Lcom/wandoujia/account/AccountParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 33
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 35
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 36
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->i:Z

    .line 37
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->j:Z

    .line 38
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->t:Z

    .line 39
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->k:Z

    .line 40
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->l:Z

    .line 42
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->m:Z

    .line 44
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->n:Z

    .line 47
    iput v0, p0, Lcom/wandoujia/account/AccountParams;->q:I

    .line 48
    sget-object v0, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 49
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->PHOENIX:Lcom/wandoujia/account/AccountParams$Type;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->i:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->j:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->t:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->k:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->l:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->m:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_8

    :goto_8
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->n:Z

    .line 93
    :try_start_0
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    .line 94
    const-class v0, Lcom/wandoujia/account/AccountErrorResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountErrorResponse;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->p:Lcom/wandoujia/account/AccountErrorResponse;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/account/AccountParams;->q:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams$Page;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams$Type;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v0, v2

    .line 85
    goto :goto_2

    :cond_3
    move v0, v2

    .line 86
    goto :goto_3

    :cond_4
    move v0, v2

    .line 87
    goto :goto_4

    :cond_5
    move v0, v2

    .line 88
    goto :goto_5

    :cond_6
    move v0, v2

    .line 89
    goto :goto_6

    :cond_7
    move v0, v2

    .line 90
    goto :goto_7

    :cond_8
    move v1, v2

    .line 91
    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/account/AccountParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 33
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 35
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 36
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->i:Z

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->j:Z

    .line 38
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->t:Z

    .line 39
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->k:Z

    .line 40
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->l:Z

    .line 42
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->m:Z

    .line 44
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->n:Z

    .line 47
    iput v2, p0, Lcom/wandoujia/account/AccountParams;->q:I

    .line 48
    sget-object v0, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 49
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->PHOENIX:Lcom/wandoujia/account/AccountParams$Type;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    .line 114
    iput-object p1, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 116
    iput v2, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 33
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 35
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 36
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->i:Z

    .line 37
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->j:Z

    .line 38
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->t:Z

    .line 39
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->k:Z

    .line 40
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->l:Z

    .line 42
    iput-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->m:Z

    .line 44
    iput-boolean v2, p0, Lcom/wandoujia/account/AccountParams;->n:Z

    .line 47
    iput v1, p0, Lcom/wandoujia/account/AccountParams;->q:I

    .line 48
    sget-object v0, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 49
    sget-object v0, Lcom/wandoujia/account/AccountParams$Type;->PHOENIX:Lcom/wandoujia/account/AccountParams$Type;

    iput-object v0, p0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    .line 120
    iput-object p1, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/wandoujia/account/AccountParams;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->g:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->h:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->i:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->j:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->t:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->k:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->l:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->m:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-boolean v0, p0, Lcom/wandoujia/account/AccountParams;->n:Z

    if-eqz v0, :cond_d

    :goto_d
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->p:Lcom/wandoujia/account/AccountErrorResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget v0, p0, Lcom/wandoujia/account/AccountParams;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 73
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    goto/16 :goto_2

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->e:Ljava/lang/String;

    goto/16 :goto_3

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/account/AccountParams;->f:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move v0, v2

    .line 59
    goto :goto_5

    :cond_6
    move v0, v2

    .line 60
    goto :goto_6

    :cond_7
    move v0, v2

    .line 61
    goto :goto_7

    :cond_8
    move v0, v2

    .line 62
    goto :goto_8

    :cond_9
    move v0, v2

    .line 63
    goto :goto_9

    :cond_a
    move v0, v2

    .line 64
    goto :goto_a

    :cond_b
    move v0, v2

    .line 65
    goto :goto_b

    :cond_c
    move v0, v2

    .line 66
    goto :goto_c

    :cond_d
    move v1, v2

    .line 67
    goto :goto_d
.end method
