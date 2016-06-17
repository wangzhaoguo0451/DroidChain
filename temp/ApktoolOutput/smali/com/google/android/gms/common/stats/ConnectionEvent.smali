.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J

.field public c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbao;

    invoke-direct {v0}, Lbao;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->b:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->c:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->i:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->j:J

    iput-wide p13, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->k:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lbao;->a(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;)V

    return-void
.end method
