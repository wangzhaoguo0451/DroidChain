.class public final Lblq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/playlog/internal/LogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/LogEvent;
    .locals 9

    const/4 v6, 0x0

    invoke-static {p0}, Ld;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v5, v6

    move-object v4, v6

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const v8, 0xffff

    and-int/2addr v8, v7

    packed-switch v8, :pswitch_data_0

    invoke-static {p0, v7}, Ld;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v7}, Ld;->d(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, v7}, Ld;->e(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    invoke-static {p0, v7}, Ld;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_3
    invoke-static {p0, v7}, Ld;->m(Landroid/os/Parcel;I)[B

    move-result-object v5

    goto :goto_0

    :pswitch_4
    invoke-static {p0, v7}, Ld;->l(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-eq v7, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/internal/LogEvent;-><init>(IJLjava/lang/String;[BLandroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/playlog/internal/LogEvent;Landroid/os/Parcel;)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Ld;->r(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->a:I

    invoke-static {p1, v1, v2}, Ld;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    invoke-static {p1, v1, v2, v3}, Ld;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Ld;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    invoke-static {p1, v1, v2}, Ld;->a(Landroid/os/Parcel;I[B)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Ld;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    invoke-static {p1, v0}, Ld;->s(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lblq;->a(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/playlog/internal/LogEvent;

    return-object v0
.end method
