.class public Lcom/wandoujia/account/dto/DeviceBean;
.super Ljava/lang/Object;
.source "DeviceBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonFilter;
    value = "device_bean_filter"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79f053eaae65b590L


# instance fields
.field private brand:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private model:Ljava/lang/String;

.field private phoneInfo:Lcom/wandoujia/account/dto/PhoneInfo;

.field private sdk:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->id:Ljava/lang/Long;

    .line 40
    iput-object p2, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/wandoujia/account/dto/DeviceBean;->source:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 180
    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->id:Ljava/lang/Long;

    .line 181
    if-nez v1, :cond_1

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 183
    check-cast p1, Lcom/wandoujia/account/dto/DeviceBean;

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/DeviceBean;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 187
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 192
    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    .line 188
    check-cast v0, Lcom/wandoujia/account/dto/DeviceBean;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/DeviceBean;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->id:Ljava/lang/Long;

    check-cast p1, Lcom/wandoujia/account/dto/DeviceBean;

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/DeviceBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p0, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    check-cast p1, Lcom/wandoujia/account/dto/DeviceBean;

    .line 145
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 146
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 151
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_7
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 156
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_8
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_9
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 161
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 162
    goto :goto_0

    .line 163
    :cond_a
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 164
    goto :goto_0

    .line 165
    :cond_b
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 166
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_c
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 169
    goto :goto_0

    .line 170
    :cond_d
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 171
    iget-object v2, p1, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 172
    goto/16 :goto_0

    .line 173
    :cond_e
    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 174
    goto/16 :goto_0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo()Lcom/wandoujia/account/dto/PhoneInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->phoneInfo:Lcom/wandoujia/account/dto/PhoneInfo;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 126
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 133
    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->id:Ljava/lang/Long;

    .line 119
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPhoneInfo(Lcom/wandoujia/account/dto/PhoneInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->phoneInfo:Lcom/wandoujia/account/dto/PhoneInfo;

    .line 103
    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->source:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceBean [udid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->udid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->sdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/account/dto/DeviceBean;->phoneInfo:Lcom/wandoujia/account/dto/PhoneInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
