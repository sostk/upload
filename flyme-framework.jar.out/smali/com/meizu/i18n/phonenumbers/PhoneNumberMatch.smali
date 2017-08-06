.class public final Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

.field private final rawString:Ljava/lang/String;

.field private final start:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "rawString"    # Ljava/lang/String;
    .param p3, "number"    # Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-gez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Start index must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_2
    iput p1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    .line 79
    iput-object p2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 71
    return-void
.end method


# virtual methods
.method public end()I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    instance-of v2, p1, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;

    if-nez v2, :cond_1

    .line 114
    return v1

    :cond_1
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;

    .line 117
    .local v0, "other":Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;
    iget-object v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v3, v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    iget v3, v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    if-ne v2, v3, :cond_2

    .line 118
    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    iget-object v2, v0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v1, v2}, Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 117
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public number()Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/meizu/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public rawString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
